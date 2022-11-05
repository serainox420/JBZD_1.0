.class Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;->this$1:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;->this$1:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$300(Lcom/pubmatic/sdk/banner/ui/ImageView;Landroid/graphics/Bitmap;)V

    .line 130
    return-void
.end method
