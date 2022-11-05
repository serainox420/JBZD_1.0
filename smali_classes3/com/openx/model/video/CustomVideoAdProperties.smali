.class public Lcom/openx/model/video/CustomVideoAdProperties;
.super Ljava/lang/Object;
.source "CustomVideoAdProperties.java"


# instance fields
.field public skipOffset:Ljava/lang/String;

.field public skipText:Ljava/lang/String;

.field public visitAdvertiserText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/openx/model/video/CustomVideoAdProperties;->skipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitAdvertiserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/openx/model/video/CustomVideoAdProperties;->visitAdvertiserText:Ljava/lang/String;

    return-object v0
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/openx/model/video/CustomVideoAdProperties;->skipOffset:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSkipText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/openx/model/video/CustomVideoAdProperties;->skipText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVisitAdvertiserText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/openx/model/video/CustomVideoAdProperties;->visitAdvertiserText:Ljava/lang/String;

    .line 84
    return-void
.end method
