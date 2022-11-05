.class public Lcom/google/android/gms/internal/zzbty;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbtx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzqS(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method
