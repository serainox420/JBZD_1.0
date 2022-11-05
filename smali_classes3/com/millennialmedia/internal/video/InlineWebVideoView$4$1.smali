.class Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$4;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMActivity;

.field final synthetic b:Lcom/millennialmedia/internal/video/InlineWebVideoView$4;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$4;Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;->b:Lcom/millennialmedia/internal/video/InlineWebVideoView$4;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;->a:Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 661
    if-nez p2, :cond_0

    .line 662
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4$1;->a:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    .line 664
    :cond_0
    return-void
.end method
