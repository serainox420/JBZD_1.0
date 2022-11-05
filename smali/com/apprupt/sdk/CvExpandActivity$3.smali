.class Lcom/apprupt/sdk/CvExpandActivity$3;
.super Ljava/lang/Object;
.source "CvExpandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvExpandActivity;->b(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvExpandActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvExpandActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity$3;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$3;->a:Lcom/apprupt/sdk/CvExpandActivity;

    iget-object v1, p0, Lcom/apprupt/sdk/CvExpandActivity$3;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-static {v1}, Lcom/apprupt/sdk/CvExpandActivity;->b(Lcom/apprupt/sdk/CvExpandActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvExpandActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
