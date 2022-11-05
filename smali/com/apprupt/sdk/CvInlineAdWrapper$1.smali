.class Lcom/apprupt/sdk/CvInlineAdWrapper$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/CvInlineAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/apprupt/sdk/CvContext;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    new-instance v2, Lcom/apprupt/sdk/MRAIDView;

    iget-object v3, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    const/4 v4, 0x0

    new-instance v5, Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;

    invoke-direct {v5, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$1;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/apprupt/sdk/MRAIDView;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView;

    .line 155
    return-void
.end method
