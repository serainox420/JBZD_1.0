.class Lcom/intentsoftware/addapptr/f;
.super Ljava/lang/Object;
.source "AdNetworkStatistics.java"


# instance fields
.field final adConfig:Lcom/intentsoftware/addapptr/b;

.field adPickerImpressions:I

.field numClicks:I

.field numImpressions:I

.field numRequests:I

.field numResponses:I


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/b;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/intentsoftware/addapptr/f;->adConfig:Lcom/intentsoftware/addapptr/b;

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    .line 18
    iput v0, p0, Lcom/intentsoftware/addapptr/f;->adPickerImpressions:I

    .line 19
    iput v0, p0, Lcom/intentsoftware/addapptr/f;->numClicks:I

    .line 20
    iput v0, p0, Lcom/intentsoftware/addapptr/f;->numRequests:I

    .line 21
    iput v0, p0, Lcom/intentsoftware/addapptr/f;->numResponses:I

    .line 22
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/intentsoftware/addapptr/f;->numClicks:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/intentsoftware/addapptr/f;->numRequests:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/intentsoftware/addapptr/f;->numResponses:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
