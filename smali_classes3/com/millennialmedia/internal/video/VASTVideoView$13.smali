.class Lcom/millennialmedia/internal/video/VASTVideoView$13;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/millennialmedia/internal/video/VASTParser$Button;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$13;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/millennialmedia/internal/video/VASTParser$Button;Lcom/millennialmedia/internal/video/VASTParser$Button;)I
    .locals 2

    .prologue
    .line 1273
    iget v0, p1, Lcom/millennialmedia/internal/video/VASTParser$Button;->position:I

    iget v1, p2, Lcom/millennialmedia/internal/video/VASTParser$Button;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1269
    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$Button;

    check-cast p2, Lcom/millennialmedia/internal/video/VASTParser$Button;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$13;->compare(Lcom/millennialmedia/internal/video/VASTParser$Button;Lcom/millennialmedia/internal/video/VASTParser$Button;)I

    move-result v0

    return v0
.end method
