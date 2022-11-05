.class Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;
.super Lcom/amazon/device/ads/MetricsCollector;
.source "MetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeMetricsCollector"
.end annotation


# instance fields
.field private final collectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/ads/MetricsCollector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/amazon/device/ads/MetricsCollector;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    .line 113
    return-void
.end method


# virtual methods
.method public incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 124
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 152
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 161
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 179
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 170
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 197
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;->collectors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/MetricsCollector;

    .line 188
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/MetricsCollector;->stopMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method
