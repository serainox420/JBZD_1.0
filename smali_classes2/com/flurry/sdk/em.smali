.class public final Lcom/flurry/sdk/em;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/em$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/eq;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/ku$a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/el;Ljava/lang/String;Lcom/flurry/sdk/em$a;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 1061
    invoke-static {}, Lcom/flurry/sdk/ef;->a()Ljava/lang/String;

    move-result-object v1

    .line 1136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 2056
    sget-object v1, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 2144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 3027
    const/16 v1, 0x4e20

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 33
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/flurry/sdk/er;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/flurry/sdk/lh;

    invoke-direct {v1}, Lcom/flurry/sdk/lh;-><init>()V

    .line 3045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 36
    const-string v1, "oauth_verifier"

    invoke-virtual {p0, v1, p2}, Lcom/flurry/sdk/em;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/ks;Lcom/flurry/sdk/el;)V

    .line 40
    new-instance v1, Lcom/flurry/sdk/em$1;

    invoke-direct {v1, p0, p3}, Lcom/flurry/sdk/em$1;-><init>(Lcom/flurry/sdk/em;Lcom/flurry/sdk/em$a;)V

    .line 3049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 52
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/flurry/sdk/ef;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
