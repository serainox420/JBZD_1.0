.class Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$3;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$3$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$3;

    iget-object v1, v1, Lcom/apprupt/sdk/CvInlineAdWrapper$3;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/mediation/Size;)V

    .line 273
    return-void
.end method
