.class public Lcom/google/android/gms/internal/zzbtl;
.super Ljava/lang/Object;


# instance fields
.field private final zzcmd:I

.field private final zzcme:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbtl;->zzcmd:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbtl;->zzcme:J

    return-void
.end method


# virtual methods
.method public zzacd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbtl;->zzcmd:I

    return v0
.end method

.method public zzace()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbtl;->zzcme:J

    return-wide v0
.end method
