.class public Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingEvent"
.end annotation


# instance fields
.field a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 239
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-ne p0, p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    instance-of v2, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    if-nez v2, :cond_2

    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :cond_2
    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .line 255
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    iget-object v3, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 259
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 270
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const-string v0, "TrackingEvent:["

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->a:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    return-object v0
.end method
