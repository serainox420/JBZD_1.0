.class public Lcom/google/android/gms/cast/AdBreakInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/AdBreakInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzamP:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzamP:J

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzamP:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/cast/AdBreakInfo;

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzamP:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;)V

    return-object v0
.end method
