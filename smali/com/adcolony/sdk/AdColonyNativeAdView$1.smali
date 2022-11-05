.class Lcom/adcolony/sdk/AdColonyNativeAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyNativeAdView;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$1;->a:Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$1;->a:Lcom/adcolony/sdk/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring engagement click as view has been destroyed."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$1;->a:Lcom/adcolony/sdk/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyNativeAdView;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_native_engagement"

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyNativeAdView$1;->a:Lcom/adcolony/sdk/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/adcolony/sdk/AdColonyNativeAdView;->a:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method
