.class Lcom/intentsoftware/addapptr/k$1;
.super Ljava/lang/Object;
.source "BannerPlacementLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/k;->presentAd(Lcom/intentsoftware/addapptr/ad/BannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/k;

.field final synthetic val$bannerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/k;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/intentsoftware/addapptr/k$1;->this$0:Lcom/intentsoftware/addapptr/k;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/k$1;->val$bannerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/k$1;->val$bannerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/intentsoftware/addapptr/k$1;->val$bannerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 110
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Bannerview size: %d, %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Placement size: %d, %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/intentsoftware/addapptr/k$1;->this$0:Lcom/intentsoftware/addapptr/k;

    invoke-static {v3}, Lcom/intentsoftware/addapptr/k;->access$000(Lcom/intentsoftware/addapptr/k;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/intentsoftware/addapptr/k$1;->this$0:Lcom/intentsoftware/addapptr/k;

    invoke-static {v3}, Lcom/intentsoftware/addapptr/k;->access$100(Lcom/intentsoftware/addapptr/k;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
