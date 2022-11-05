.class public Lcom/openx/model/video/SkipOffset;
.super Lcom/openx/model/video/VideoInfo;
.source "SkipOffset.java"


# instance fields
.field private skipOffset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/openx/model/video/VideoInfo;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/openx/model/video/VideoInfo;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/openx/model/video/SkipOffset;->skipOffset:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/openx/model/video/SkipOffset;->skipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/openx/model/video/SkipOffset;->skipOffset:Ljava/lang/String;

    .line 21
    return-void
.end method
