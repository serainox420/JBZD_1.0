.class public Lcom/openx/model/vast/VASTParser;
.super Ljava/lang/Object;
.source "VASTParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/vast/VASTParser$Tracking;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VASTParser"

.field private static final serialVersionUID:J = 0x4083434ce090f1cfL


# instance fields
.field private clickThroughUrl:Ljava/lang/String;

.field private clickTrackingUrl:Ljava/lang/String;

.field private clickTrackings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/ClickTracking;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Ljava/lang/String;

.field private volatile hasWrapper:Z

.field private impressionTrackerUrl:Ljava/lang/String;

.field private impressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Impression;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFileUrl:Ljava/lang/String;

.field private ready:Z

.field private skipOffset:Ljava/lang/String;

.field private trackings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Tracking;",
            ">;"
        }
    .end annotation
.end field

.field vast:Lcom/openx/model/vast/VAST;

.field private volatile wrappedVASTXml:Lcom/openx/model/vast/VASTParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/openx/errors/VastParseError;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VASTParser;->trackings:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VASTParser;->impressions:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VASTParser;->clickTrackings:Ljava/util/ArrayList;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->ready:Z

    .line 362
    :try_start_0
    invoke-direct {p0, p2}, Lcom/openx/model/vast/VASTParser;->readVAST(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->ready:Z

    .line 371
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Lcom/openx/errors/VastParseError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/openx/errors/VastParseError;-><init>(Ljava/lang/String;)V

    .line 367
    throw v1
.end method

.method private findClickTrackings(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VAST;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/ClickTracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p1, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 685
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    if-eqz v1, :cond_1

    .line 688
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 691
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v2, v2, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 694
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v0, v0, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    .line 714
    :goto_0
    return-object v0

    .line 699
    :cond_1
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    if-eqz v1, :cond_3

    .line 702
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    iget-object v0, v0, Lcom/openx/model/vast/Wrapper;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 705
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v2, v2, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 708
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v0, v0, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    goto :goto_0

    .line 714
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readVAST(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 379
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 380
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 381
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 383
    new-instance v1, Lcom/openx/model/vast/VAST;

    invoke-direct {v1, v0}, Lcom/openx/model/vast/VAST;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v1, p0, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    .line 385
    return-void
.end method

.method private waitForWrapper()V
    .locals 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->hasWrapper:Z

    if-nez v0, :cond_1

    .line 783
    :cond_0
    return-void

    .line 769
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->hasWrapper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0}, Lcom/openx/model/vast/VASTParser;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    :cond_2
    const-wide/16 v0, 0x2ee

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAllTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VASTParser;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Tracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-virtual {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->getTrackingEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->trackings:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-virtual {p0, v1, p2}, Lcom/openx/model/vast/VASTParser;->getTrackingEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 573
    :cond_0
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->getAllTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->trackings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickThroughUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, v1, p2}, Lcom/openx/model/vast/VASTParser;->getClickThroughUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->clickThroughUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    iget-object v0, v0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 663
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 666
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v2, v2, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v2, v2, Lcom/openx/model/vast/VideoClicks;->clickThrough:Lcom/openx/model/vast/ClickThrough;

    if-eqz v2, :cond_1

    .line 669
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    iget-object v0, v0, Lcom/openx/model/vast/VideoClicks;->clickThrough:Lcom/openx/model/vast/ClickThrough;

    iget-object v0, v0, Lcom/openx/model/vast/ClickThrough;->value:Ljava/lang/String;

    goto :goto_0

    .line 675
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClickTrackingUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParser;->waitForWrapper()V

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->clickTrackingUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->clickTrackingUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getClickTrackingUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getClickTrackingUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 751
    :cond_1
    return-object v0
.end method

.method public getClickTrackings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/ClickTracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->clickTrackings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VASTParser;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/ClickTracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-direct {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->findClickTrackings(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->clickTrackings:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-direct {p0, v1, p2}, Lcom/openx/model/vast/VASTParser;->findClickTrackings(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 728
    :cond_0
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->getClickTrackings(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->clickTrackings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParser;->waitForWrapper()V

    .line 405
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->duration:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0}, Lcom/openx/model/vast/VASTParser;->getDuration()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->duration:Ljava/lang/String;

    goto :goto_0
.end method

.method public getError(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    iget-object v0, v0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 642
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v1, v1, Lcom/openx/model/vast/InLine;->error:Lcom/openx/model/vast/Error;

    if-eqz v1, :cond_0

    .line 644
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->error:Lcom/openx/model/vast/Error;

    iget-object v0, v0, Lcom/openx/model/vast/Error;->value:Ljava/lang/String;

    .line 647
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImpressionEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VAST;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Impression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p1, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 483
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    if-eqz v1, :cond_0

    .line 486
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->impressions:Ljava/util/ArrayList;

    .line 494
    :goto_0
    return-object v0

    .line 489
    :cond_0
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    if-eqz v1, :cond_1

    .line 492
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    iget-object v0, v0, Lcom/openx/model/vast/Wrapper;->impressions:Ljava/util/ArrayList;

    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImpressionTrackerUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParser;->waitForWrapper()V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->impressionTrackerUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getImpressionTrackerUrl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v1}, Lcom/openx/model/vast/VASTParser;->getImpressionTrackerUrl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_0
    return-object v0
.end method

.method public getImpressions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Impression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->impressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressions(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VASTParser;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Impression;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-virtual {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->getImpressionEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->impressions:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    invoke-virtual {p0, v1, p2}, Lcom/openx/model/vast/VASTParser;->getImpressionEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    :cond_0
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {p0, v0, p2}, Lcom/openx/model/vast/VASTParser;->getImpressions(Lcom/openx/model/vast/VASTParser;I)Ljava/util/ArrayList;

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->impressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    iget-object v1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, v1, p2}, Lcom/openx/model/vast/VASTParser;->getMediaFileUrl(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    .line 476
    :cond_0
    const-string v0, "invalid media file"

    :goto_0
    return-object v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->mediaFileUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    iget-object v0, v0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 452
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 455
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_2

    .line 458
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/MediaFile;

    .line 460
    iget-object v2, v0, Lcom/openx/model/vast/MediaFile;->type:Ljava/lang/String;

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/openx/model/vast/MediaFile;->type:Ljava/lang/String;

    const-string v3, "3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    :cond_3
    iget-object v0, v0, Lcom/openx/model/vast/MediaFile;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkipOffset(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->skipOffset:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0, p1, p2}, Lcom/openx/model/vast/VASTParser;->getSkipOffset(Lcom/openx/model/vast/VASTParser;I)Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->skipOffset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    iget-object v0, v0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 618
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    if-eqz v1, :cond_2

    .line 621
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 624
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_1

    .line 627
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->skipoffset:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->skipOffset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackingByType(Lcom/openx/model/video/VideoAdEvent$Event;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/video/VideoAdEvent$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->trackings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Tracking;

    .line 594
    const-string v3, "VASTParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iterating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/openx/model/vast/Tracking;->event:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v3, v0, Lcom/openx/model/vast/Tracking;->event:Ljava/lang/String;

    sget-object v4, Lcom/openx/model/vast/VASTParser$Tracking;->EVENT_MAPPING:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/openx/model/video/VideoAdEvent$Event;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    const-string v3, "VASTParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iterating match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/openx/model/vast/Tracking;->event:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, v0, Lcom/openx/model/vast/Tracking;->value:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    :cond_1
    return-object v2
.end method

.method public getTrackingEvents(Lcom/openx/model/vast/VAST;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openx/model/vast/VAST;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Tracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p1, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 521
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    if-eqz v1, :cond_1

    .line 524
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    iget-object v0, v0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 527
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_0

    .line 530
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->trackingEvents:Ljava/util/ArrayList;

    .line 559
    :goto_0
    return-object v0

    .line 535
    :cond_1
    iget-object v1, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    if-eqz v1, :cond_5

    .line 538
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    iget-object v0, v0, Lcom/openx/model/vast/Wrapper;->creatives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Creative;

    .line 541
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    if-eqz v2, :cond_3

    .line 544
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    iget-object v0, v0, Lcom/openx/model/vast/Linear;->trackingEvents:Ljava/util/ArrayList;

    goto :goto_0

    .line 547
    :cond_3
    iget-object v2, v0, Lcom/openx/model/vast/Creative;->nonLinearAds:Lcom/openx/model/vast/NonLinearAds;

    if-eqz v2, :cond_4

    .line 550
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->nonLinearAds:Lcom/openx/model/vast/NonLinearAds;

    iget-object v0, v0, Lcom/openx/model/vast/NonLinearAds;->trackingEvents:Ljava/util/ArrayList;

    goto :goto_0

    .line 553
    :cond_4
    iget-object v0, v0, Lcom/openx/model/vast/Creative;->companionAds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 559
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Tracking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->trackings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVASTAdTagURI(Lcom/openx/model/vast/VASTParser;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    iget-object v0, p1, Lcom/openx/model/vast/VASTParser;->vast:Lcom/openx/model/vast/VAST;

    iget-object v0, v0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/vast/Ad;

    .line 418
    iget-object v2, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    iget-object v2, v2, Lcom/openx/model/vast/Wrapper;->vastAdTagURI:Lcom/openx/model/vast/VASTAdTagURI;

    if-eqz v2, :cond_0

    .line 421
    iget-object v0, v0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    iget-object v0, v0, Lcom/openx/model/vast/Wrapper;->vastAdTagURI:Lcom/openx/model/vast/VASTAdTagURI;

    iget-object v0, v0, Lcom/openx/model/vast/VASTAdTagURI;->value:Ljava/lang/String;

    .line 426
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedVASTXml()Lcom/openx/model/vast/VASTParser;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    return-object v0
.end method

.method public hasWrapper()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->hasWrapper:Z

    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParser;->waitForWrapper()V

    .line 758
    iget-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->ready:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    invoke-virtual {v0}, Lcom/openx/model/vast/VASTParser;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/openx/model/vast/VASTParser;->hasWrapper:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWrapper(Lcom/openx/model/vast/VASTParser;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/openx/model/vast/VASTParser;->wrappedVASTXml:Lcom/openx/model/vast/VASTParser;

    .line 791
    return-void
.end method
