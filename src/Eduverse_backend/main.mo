import Text "mo:base/Text";
import Time "mo:base/Time";
import Buffer "mo:base/Buffer";
import Option "mo:base/Option";
import Types "types";

actor {
  stable var id : ?Nat = null;
  let users = Buffer.Buffer<Types.User>(100);

  public func initializeId() : () {
    if (id == null) {
      id := ?0;
    };
  };

  public func createUser(fName : Text, lName : Text, email : Text, password : Text, role : Text) : async Types.User {

    let timeNow = Time.now();

    let user : Types.User = {
      id = id;
      fName = fName;
      lName = lName;
      email = email;
      password = password;
      role = role;
      createdAt = timeNow;
      updatedAt = timeNow;
    };

    id := ?(Option.get(id, 0) + 1);

    users.add(user);

    return user;
  };
}