.class public Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;
.super Landroid/support/v7/widget/RecyclerView$u;
.source "NativeVideoRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/NativeVideoRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeVideoVH"
.end annotation


# instance fields
.field private adView:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/loopme/NativeVideoRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/loopme/NativeVideoRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;->this$0:Lcom/loopme/NativeVideoRecyclerAdapter;

    .line 298
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    .line 299
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;->adView:Landroid/widget/RelativeLayout;

    .line 300
    return-void
.end method

.method static synthetic access$400(Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/loopme/NativeVideoRecyclerAdapter$NativeVideoVH;->adView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
