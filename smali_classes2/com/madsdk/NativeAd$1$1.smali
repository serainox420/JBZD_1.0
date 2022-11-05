.class Lcom/madsdk/NativeAd$1$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/NativeAd$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/NativeAd$1;


# direct methods
.method constructor <init>(Lcom/madsdk/NativeAd$1;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/madsdk/NativeAd$1$1;->this$0:Lcom/madsdk/NativeAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method
