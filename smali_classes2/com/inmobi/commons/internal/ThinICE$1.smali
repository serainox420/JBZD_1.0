.class final Lcom/inmobi/commons/internal/ThinICE$1;
.super Ljava/lang/Object;
.source "ThinICE.java"

# interfaces
.implements Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/ThinICE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSamplingTerminated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/inmobi/commons/internal/ThinICE;->a(Ljava/util/List;)V

    .line 38
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->stop()V

    .line 39
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->stop()V

    .line 40
    return-void
.end method
