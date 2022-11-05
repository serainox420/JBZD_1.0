.class Lcom/amazon/device/ads/MetricsCollector;
.super Ljava/lang/Object;
.source "MetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MetricsCollector$MetricHitString;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;,
        Lcom/amazon/device/ads/MetricsCollector$MetricHit;,
        Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private adTypeMetricTag:Ljava/lang/String;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field protected metricHits:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MetricsCollector;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/MetricsCollector;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 31
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    .line 32
    return-void
.end method


# virtual methods
.method public getAdTypeMetricTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricHits()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector$MetricHit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    return-object v0
.end method

.method public incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Increment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitIncrement;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public isMetricsCollectorEmpty()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Publish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector$MetricHitTotalTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 72
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 73
    return-void
.end method

.method public setAdTypeMetricTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazon/device/ads/MetricsCollector;->adTypeMetricTag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v1, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/MetricsCollector$MetricHitString;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 84
    return-void
.end method

.method public startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 78
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v3, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;

    invoke-direct {v3, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStartTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 94
    return-void
.end method

.method public stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METRIC Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/Metrics$MetricType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 88
    invoke-static {p2, p3}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromNanoseconds(J)J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/amazon/device/ads/MetricsCollector;->metricHits:Ljava/util/Vector;

    new-instance v3, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;

    invoke-direct {v3, p1, v0, v1}, Lcom/amazon/device/ads/MetricsCollector$MetricHitStopTime;-><init>(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
