.class Lcom/millennialmedia/internal/video/InlineWebVideoView$2;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;-><init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 470
    if-eqz p2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->h(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 473
    :cond_0
    return-void
.end method
