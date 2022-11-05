.class public Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;
.super Lcom/millennialmedia/internal/PlayList$PlayListItem;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdContentPlayListItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0, p1, p4}, Lcom/millennialmedia/internal/PlayList$PlayListItem;-><init>(Ljava/lang/String;Z)V

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "value is required"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object p2, p0, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;->a:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;->e:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v0, p3}, Lcom/millennialmedia/internal/AdMetadata;->addAll(Lcom/millennialmedia/internal/AdMetadata;)V

    .line 185
    return-void
.end method
