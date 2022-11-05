.class Lcom/intentsoftware/addapptr/q$a;
.super Ljava/lang/Object;
.source "NativePlacement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/intentsoftware/addapptr/q$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

.field final synthetic this$0:Lcom/intentsoftware/addapptr/q;

.field private final timestamp:J


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/q;Lcom/intentsoftware/addapptr/ad/NativeAd;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/intentsoftware/addapptr/q$a;->this$0:Lcom/intentsoftware/addapptr/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 49
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/q$a;->timestamp:J

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/intentsoftware/addapptr/q$a;)I
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v0

    iget-object v1, p1, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v0

    iget-object v1, p1, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/b;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/q$a;->timestamp:J

    iget-wide v2, p1, Lcom/intentsoftware/addapptr/q$a;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/intentsoftware/addapptr/q$a;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/q$a;->compareTo(Lcom/intentsoftware/addapptr/q$a;)I

    move-result v0

    return v0
.end method

.method public getNativeAd()Lcom/intentsoftware/addapptr/ad/NativeAd;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/q$a;->nativeAd:Lcom/intentsoftware/addapptr/ad/NativeAd;

    return-object v0
.end method
