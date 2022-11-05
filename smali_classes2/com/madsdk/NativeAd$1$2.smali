.class Lcom/madsdk/NativeAd$1$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$link:Lcom/madsdk/gson/request/Link;


# direct methods
.method constructor <init>(Lcom/madsdk/NativeAd$1;Lcom/madsdk/gson/request/Link;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/madsdk/NativeAd$1$2;->this$0:Lcom/madsdk/NativeAd$1;

    iput-object p2, p0, Lcom/madsdk/NativeAd$1$2;->val$link:Lcom/madsdk/gson/request/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/madsdk/NativeAd$1$2;->val$link:Lcom/madsdk/gson/request/Link;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/madsdk/NativeAd$1$2;->this$0:Lcom/madsdk/NativeAd$1;

    iget-boolean v0, v0, Lcom/madsdk/NativeAd$1;->val$isNativeBrowser:Z

    iget-object v1, p0, Lcom/madsdk/NativeAd$1$2;->val$link:Lcom/madsdk/gson/request/Link;

    iget-object v1, v1, Lcom/madsdk/gson/request/Link;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/madsdk/NativeAd$1$2;->this$0:Lcom/madsdk/NativeAd$1;

    iget-object v2, v2, Lcom/madsdk/NativeAd$1;->val$container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/madsdk/Utils;->openBrowser(ZLjava/lang/String;Landroid/content/Context;)V

    .line 103
    :cond_0
    return-void
.end method
