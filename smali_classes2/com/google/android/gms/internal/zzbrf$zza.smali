.class public Lcom/google/android/gms/internal/zzbrf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final zzcir:Lcom/google/android/gms/internal/zzbre;

.field public final zzciv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbre;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbre;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbqw;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrf$zza;->zzcir:Lcom/google/android/gms/internal/zzbre;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrf$zza;->zzciv:Ljava/util/List;

    return-void
.end method
