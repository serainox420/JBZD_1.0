.class Lcom/apprupt/sdk/CvExpandActivity$5;
.super Ljava/lang/Object;
.source "CvExpandActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvExpandActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/apprupt/sdk/CvExpandActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvExpandActivity;I)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity$5;->b:Lcom/apprupt/sdk/CvExpandActivity;

    iput p2, p0, Lcom/apprupt/sdk/CvExpandActivity$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$5;->b:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvExpandActivity;->c(Lcom/apprupt/sdk/CvExpandActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/apprupt/sdk/CvExpandActivity$5;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 232
    return-void
.end method
