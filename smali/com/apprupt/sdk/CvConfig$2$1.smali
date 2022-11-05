.class Lcom/apprupt/sdk/CvConfig$2$1;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/apprupt/sdk/CvConfig$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig$2;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$2$1;->b:Lcom/apprupt/sdk/CvConfig$2;

    iput p2, p0, Lcom/apprupt/sdk/CvConfig$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$2$1;->b:Lcom/apprupt/sdk/CvConfig$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->c(Lcom/apprupt/sdk/CvConfig;)I

    move-result v0

    iget v1, p0, Lcom/apprupt/sdk/CvConfig$2$1;->a:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$2$1;->b:Lcom/apprupt/sdk/CvConfig$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvConfig$2;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$2$1;->b:Lcom/apprupt/sdk/CvConfig$2;

    iget-object v1, v1, Lcom/apprupt/sdk/CvConfig$2;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvConfig$Listener;->a(Lcom/apprupt/sdk/CvConfig;)V

    .line 81
    :cond_0
    return-void
.end method
