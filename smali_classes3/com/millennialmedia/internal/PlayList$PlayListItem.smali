.class public Lcom/millennialmedia/internal/PlayList$PlayListItem;
.super Ljava/lang/Object;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListItem"
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field protected e:Lcom/millennialmedia/internal/AdMetadata;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/PlayList$PlayListItem;-><init>(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "itemId is required"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/internal/PlayList$PlayListItem;->d:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/PlayList$PlayListItem;->e:Lcom/millennialmedia/internal/AdMetadata;

    .line 71
    iget-object v0, p0, Lcom/millennialmedia/internal/PlayList$PlayListItem;->e:Lcom/millennialmedia/internal/AdMetadata;

    const-string v1, "enhancedAdControlEnabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/AdMetadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public isEnhancedAdControlEnabled()Z
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/millennialmedia/internal/PlayList$PlayListItem;->e:Lcom/millennialmedia/internal/AdMetadata;

    const-string v2, "enhancedAdControlEnabled"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/AdMetadata;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/internal/PlayList$PlayListItem;->e:Lcom/millennialmedia/internal/AdMetadata;

    const-string v1, "enhancedAdControlEnabled"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/AdMetadata;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 83
    :cond_0
    return v0
.end method
