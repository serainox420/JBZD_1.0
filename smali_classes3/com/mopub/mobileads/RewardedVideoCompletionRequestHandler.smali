.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;
.super Ljava/lang/Object;
.source "RewardedVideoCompletionRequestHandler.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# static fields
.field static final a:[I


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/mopub/volley/RequestQueue;

.field private e:I

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    invoke-static {p2, p3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->b:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    .line 61
    iput-object p4, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->c:Landroid/os/Handler;

    .line 62
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    .line 63
    return-void
.end method

.method static a(I)I
    .locals 2

    .prologue
    .line 122
    if-ltz p0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 123
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a:[I

    aget v0, v0, p0

    .line 125
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a:[I

    sget-object v1, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&customer_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&nv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.11.0"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->f:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->b:Ljava/lang/String;

    new-instance v2, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v3, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    invoke-static {v3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;-><init>(Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V

    .line 76
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 77
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->d:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 79
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 80
    const-string v0, "Exceeded number of retries for rewarded video completion request."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->c:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;-><init>(Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;)V

    iget v2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    invoke-static {v2}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->a(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->e:I

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 103
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->f:Z

    .line 108
    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 96
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->f:Z

    .line 99
    :cond_1
    return-void
.end method
