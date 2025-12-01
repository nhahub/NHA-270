from fastapi import FastAPI
from gradio_client import Client
import uvicorn
import base64
import os

app = FastAPI()

client = Client("mai2026/sdxl-lora-floorplan")


@app.post("/generate-floorplan/")
async def generate(data: dict):
    try:
        prompt = data.get("prompt")
        if not prompt:
            return {"error": "Prompt is missing"}

        result = client.predict(prompt=prompt, api_name="/generate")

        print("RAW RESULT TYPE:", type(result))
        print("RAW RESULT:", result)

        # 1) نطلّع ال path من result
        path = None

        if isinstance(result, str):
            path = result

        elif isinstance(result, dict):
            path = result.get("path") or result.get("url")

        elif isinstance(result, list) and result:
            first = result[0]
            if isinstance(first, str):
                path = first
            elif isinstance(first, dict):
                path = first.get("path") or first.get("url")

        if not path:
            return {"error": "Could not extract image path from result"}

        if not os.path.exists(path):
            return {"error": f"Image file does not exist: {path}"}

        # 2) نقرأ الصورة و نحولها Base64
        with open(path, "rb") as f:
            image_bytes = f.read()

        image_b64 = base64.b64encode(image_bytes).decode("utf-8")

        # 3) نرجع الـ base64 لـ Flutter
        return {"image_base64": image_b64}

    except Exception as e:
        print("SERVER ERROR:", e)
        return {"error": str(e)}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
