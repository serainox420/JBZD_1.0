.class public Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;
.super Lcom/millennialmedia/internal/PlayList$PlayListItem;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExchangeMediationPlayListItem"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public postBody:Ljava/lang/String;

.field public postContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0, p1, p3}, Lcom/millennialmedia/internal/PlayList$PlayListItem;-><init>(Ljava/lang/String;Z)V

    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "url is required"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p2, p0, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->a:Ljava/lang/String;

    .line 160
    return-void
.end method
