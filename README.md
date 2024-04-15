This demo showcases a memory leak with next/image. The demoed nextjs app is located under docker/demo. The trigger for memory leak is a large JPG image (public/large.jpg) is rendered on the home page.

To run this demo:
- run ./up.ps1 in Powershell
- Once deployment is finsihed:
    - Open "Stats" in Docker Desktop (or monitor memory in any other way)
    - Open http://127.0.0.1:3001 in browser - this will cause a memory spike
    - Open the same URL in incognito tab and keep refreshing it with the original tab - this will cause the second spike
- Close all tabs. Memory usage will remain high.
