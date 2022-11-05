package io.realm;

import java.util.Date;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.User;
/* compiled from: CommentRealmProxyInterface.java */
/* loaded from: classes3.dex */
public interface c {
    String realmGet$comment();

    Date realmGet$created_at();

    int realmGet$id();

    int realmGet$media_id();

    int realmGet$minus();

    int realmGet$parent_id();

    int realmGet$plus();

    q<Comment> realmGet$replies();

    int realmGet$reports();

    User realmGet$user();

    int realmGet$voted();

    void realmSet$comment(String str);

    void realmSet$created_at(Date date);

    void realmSet$media_id(int i);

    void realmSet$minus(int i);

    void realmSet$parent_id(int i);

    void realmSet$plus(int i);

    void realmSet$reports(int i);

    void realmSet$user(User user);

    void realmSet$voted(int i);
}
