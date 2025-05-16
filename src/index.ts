import { Elysia, t } from "elysia";
import { swagger } from "@elysiajs/swagger";

new Elysia()
  .use(swagger())
  .listen(3000);
