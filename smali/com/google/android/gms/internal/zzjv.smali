.class public final Lcom/google/android/gms/internal/zzjv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjv$zza;
    }
.end annotation


# instance fields
.field public final zzLh:I

.field public final zzLi:Lcom/google/android/gms/internal/zzjq;

.field public final zzLj:Lcom/google/android/gms/internal/zzkb;

.field public final zzLk:Ljava/lang/String;

.field public final zzLl:Lcom/google/android/gms/internal/zzjt;

.field public final zzLm:Lcom/google/android/gms/internal/zzkd;

.field public final zzLn:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move-object v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzjv;-><init>(Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;ILcom/google/android/gms/internal/zzkd;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;ILcom/google/android/gms/internal/zzkd;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjv;->zzLi:Lcom/google/android/gms/internal/zzjq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjv;->zzLk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjv;->zzLl:Lcom/google/android/gms/internal/zzjt;

    iput p5, p0, Lcom/google/android/gms/internal/zzjv;->zzLh:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjv;->zzLm:Lcom/google/android/gms/internal/zzkd;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzjv;->zzLn:J

    return-void
.end method
