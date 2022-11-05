.class public Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
.super Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressEvent"
.end annotation


# instance fields
.field public offset:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;-><init>(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/lang/String;)V

    .line 299
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    if-ne p0, p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    instance-of v2, p1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    if-nez v2, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    .line 312
    :cond_2
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 313
    goto :goto_0

    .line 316
    :cond_3
    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    .line 318
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    iget-object v3, p1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 319
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->hashCode()I

    move-result v0

    .line 330
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressEvent:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    return-object v0
.end method
