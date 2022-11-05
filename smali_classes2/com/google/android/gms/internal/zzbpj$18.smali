.class Lcom/google/android/gms/internal/zzbpj$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpr$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzYX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$18;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$18;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzc(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrb;->zzaam()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$18;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzc(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrc;->zzaaq()Lcom/google/android/gms/internal/zzbrb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrb;->zzaam()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbps;->zzZl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/zzbpj$18$1;

    invoke-direct {v5, p0, p4}, Lcom/google/android/gms/internal/zzbpj$18$1;-><init>(Lcom/google/android/gms/internal/zzbpj$18;Lcom/google/android/gms/internal/zzbpr$zza;)V

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzboo;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbos;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
