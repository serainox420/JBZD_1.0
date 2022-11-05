.class Lcom/apprupt/sdk/CvInlineAdWrapper$5;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$5;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$5;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->q()V

    .line 317
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$5;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvExpandActivity;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)V

    .line 318
    return-void
.end method
