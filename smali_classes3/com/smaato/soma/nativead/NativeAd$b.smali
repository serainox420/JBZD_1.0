.class Lcom/smaato/soma/nativead/NativeAd$b;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/smaato/soma/nativead/NativeAd;)V
    .locals 0

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$b;->b:Lcom/smaato/soma/nativead/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$b;->a:Ljava/lang/String;

    .line 1400
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd$b;->a:Ljava/lang/String;

    .line 1408
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1409
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1410
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$b;->b:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$b;->b:Lcom/smaato/soma/nativead/NativeAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;Z)V

    .line 1414
    return-void
.end method
