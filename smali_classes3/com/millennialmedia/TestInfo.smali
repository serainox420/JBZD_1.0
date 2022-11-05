.class public Lcom/millennialmedia/TestInfo;
.super Ljava/lang/Object;
.source "TestInfo.java"


# instance fields
.field public bidder:Ljava/lang/String;

.field public creativeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public setBidder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/millennialmedia/TestInfo;->bidder:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    .line 49
    return-void
.end method
