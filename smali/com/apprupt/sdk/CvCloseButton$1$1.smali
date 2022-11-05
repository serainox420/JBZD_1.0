.class Lcom/apprupt/sdk/CvCloseButton$1$1;
.super Ljava/lang/Object;
.source "CvCloseButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvCloseButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvCloseButton$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvCloseButton$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/apprupt/sdk/CvCloseButton$1$1;->a:Lcom/apprupt/sdk/CvCloseButton$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton$1$1;->a:Lcom/apprupt/sdk/CvCloseButton$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvCloseButton$1;->a:Lcom/apprupt/sdk/CvCloseButton;

    invoke-static {v0}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/CvCloseButton;)Lcom/apprupt/sdk/CvCloseButton$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton$1$1;->a:Lcom/apprupt/sdk/CvCloseButton$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvCloseButton$1;->a:Lcom/apprupt/sdk/CvCloseButton;

    invoke-static {v0}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/CvCloseButton;)Lcom/apprupt/sdk/CvCloseButton$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/apprupt/sdk/CvCloseButton$Listener;->a()V

    .line 96
    :cond_0
    return-void
.end method
