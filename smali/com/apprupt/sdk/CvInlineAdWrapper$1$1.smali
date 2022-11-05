.class Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$1;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$1;

    iget-object v1, v1, Lcom/apprupt/sdk/CvInlineAdWrapper$1;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method
