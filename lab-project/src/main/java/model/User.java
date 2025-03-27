package model;
import java.io.Serializable;
import java.util.Objects;

public class User implements Serializable {
    private String email;
    private String password;
    private String name;
    private String gender;
    private String favouriteColour;

    public User() {
    }

    public User(String email, String password, String name, String gender, String favouriteColour) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.favouriteColour = favouriteColour;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFavouriteColour() {
        return this.favouriteColour;
    }

    public void setFavouriteColour(String favouriteColour) {
        this.favouriteColour = favouriteColour;
    }

    public User email(String email) {
        setEmail(email);
        return this;
    }

    public User password(String password) {
        setPassword(password);
        return this;
    }

    public User name(String name) {
        setName(name);
        return this;
    }

    public User gender(String gender) {
        setGender(gender);
        return this;
    }

    public User favouriteColour(String favouriteColour) {
        setFavouriteColour(favouriteColour);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof User)) {
            return false;
        }
        User user = (User) o;
        return Objects.equals(email, user.email) && Objects.equals(password, user.password) && Objects.equals(name, user.name) && Objects.equals(gender, user.gender) && Objects.equals(favouriteColour, user.favouriteColour);
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, password, name, gender, favouriteColour);
    }

    @Override
    public String toString() {
        return "{" +
            " email='" + getEmail() + "'" +
            ", password='" + getPassword() + "'" +
            ", name='" + getName() + "'" +
            ", gender='" + getGender() + "'" +
            ", favouriteColour='" + getFavouriteColour() + "'" +
            "}";
    }
    
}
