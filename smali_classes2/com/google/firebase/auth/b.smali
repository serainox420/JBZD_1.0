.class public Lcom/google/firebase/auth/b;
.super Lcom/google/firebase/auth/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "password"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/b;->b:Ljava/lang/String;

    return-object v0
.end method
