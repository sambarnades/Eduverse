import Int "mo:base/Int";
import Text "mo:base/Text";

module Types {
  public type Time = Int;

  public type User = {
    id : ?Int;
    fName : Text;
    lName : Text;
    email : Text;
    password : Text;
    role : Text;
    createdAt : Time;
    updatedAt : Time;
  };
};
