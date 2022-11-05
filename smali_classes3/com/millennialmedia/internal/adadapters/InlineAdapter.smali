.class public abstract Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.super Lcom/millennialmedia/internal/adadapters/AdAdapter;
.source "InlineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract display(Landroid/widget/RelativeLayout;II)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
.end method
