.class Lcom/apprupt/sdk/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$1;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$1;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$1;->a:Lcom/apprupt/sdk/AdView;

    new-instance v1, Lcom/apprupt/sdk/AdView$1$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AdView$1$1;-><init>(Lcom/apprupt/sdk/AdView$1;)V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    return-void
.end method
