.class public Lio/realm/d;
.super Lio/realm/b;
.source "DynamicRealm.java"


# direct methods
.method private constructor <init>(Lio/realm/p;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lio/realm/b;-><init>(Lio/realm/p;)V

    .line 49
    return-void
.end method

.method public static b(Lio/realm/p;)Lio/realm/d;
    .locals 2

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const-class v0, Lio/realm/d;

    invoke-static {p0, v0}, Lio/realm/n;->a(Lio/realm/p;Ljava/lang/Class;)Lio/realm/b;

    move-result-object v0

    check-cast v0, Lio/realm/d;

    return-object v0
.end method

.method static c(Lio/realm/p;)Lio/realm/d;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lio/realm/d;

    invoke-direct {v0, p0}, Lio/realm/d;-><init>(Lio/realm/p;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->c()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->close()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->d()V

    return-void
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Lio/realm/p;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->g()Lio/realm/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()J
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lio/realm/b;->j()Z

    move-result v0

    return v0
.end method
