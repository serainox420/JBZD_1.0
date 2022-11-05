.class public final Lcom/flurry/sdk/eo;
.super Lcom/flurry/sdk/eq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/eo$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/flurry/sdk/eq;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/eo;->d:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/ku$a;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILcom/flurry/sdk/eo$a;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 1136
    iput-object p1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 2081
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 2144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 3027
    const v1, 0x9c40

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 42
    new-instance v1, Lcom/flurry/sdk/eb;

    invoke-direct {v1}, Lcom/flurry/sdk/eb;-><init>()V

    .line 3045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 44
    new-instance v1, Lcom/flurry/sdk/eo$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/flurry/sdk/eo$1;-><init>(Lcom/flurry/sdk/eo;Lcom/flurry/sdk/eo$a;I)V

    .line 3049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 75
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/eo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
