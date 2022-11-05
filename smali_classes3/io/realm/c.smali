.class public interface abstract Lio/realm/c;
.super Ljava/lang/Object;
.source "CommentRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$comment()Ljava/lang/String;
.end method

.method public abstract realmGet$created_at()Ljava/util/Date;
.end method

.method public abstract realmGet$id()I
.end method

.method public abstract realmGet$media_id()I
.end method

.method public abstract realmGet$minus()I
.end method

.method public abstract realmGet$parent_id()I
.end method

.method public abstract realmGet$plus()I
.end method

.method public abstract realmGet$replies()Lio/realm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$reports()I
.end method

.method public abstract realmGet$user()Lpl/jbzd/app/model/User;
.end method

.method public abstract realmGet$voted()I
.end method

.method public abstract realmSet$comment(Ljava/lang/String;)V
.end method

.method public abstract realmSet$created_at(Ljava/util/Date;)V
.end method

.method public abstract realmSet$media_id(I)V
.end method

.method public abstract realmSet$minus(I)V
.end method

.method public abstract realmSet$parent_id(I)V
.end method

.method public abstract realmSet$plus(I)V
.end method

.method public abstract realmSet$reports(I)V
.end method

.method public abstract realmSet$user(Lpl/jbzd/app/model/User;)V
.end method

.method public abstract realmSet$voted(I)V
.end method
