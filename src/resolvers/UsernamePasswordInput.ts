import { Field, InputType } from "type-graphql";

// Used for argument types

@InputType()
export class UsernamePasswordInput {
  @Field()
  email: string;
  @Field()
  username: string;
  @Field()
  password: string;
}
