.class public Lcom/mopub/volley/AuthFailureError;
.super Lcom/mopub/volley/VolleyError;
.source "AuthFailureError.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mopub/volley/VolleyError;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/volley/AuthFailureError;->a:Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/mopub/volley/NetworkResponse;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/volley/AuthFailureError;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "User needs to (re)enter credentials."

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/volley/AuthFailureError;->a:Landroid/content/Intent;

    return-object v0
.end method
