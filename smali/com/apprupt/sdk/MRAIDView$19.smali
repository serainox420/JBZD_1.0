.class Lcom/apprupt/sdk/MRAIDView$19;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$19;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$19;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 726
    new-instance v1, Lcom/apprupt/sdk/CvLauncher;

    invoke-direct {v1, v0}, Lcom/apprupt/sdk/CvLauncher;-><init>(Landroid/content/Context;)V

    .line 727
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$19;->a:Ljava/lang/String;

    sget-object v3, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1, v2, v3}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAdType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 731
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$19;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 734
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 736
    :cond_1
    return-void
.end method
