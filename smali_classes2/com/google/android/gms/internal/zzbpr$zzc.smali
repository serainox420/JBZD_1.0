.class Lcom/google/android/gms/internal/zzbpr$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzboo;
.implements Lcom/google/android/gms/internal/zzbpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzcfV:Lcom/google/android/gms/internal/zzbpr;

.field private final zzcgi:Lcom/google/android/gms/internal/zzbrd;

.field private final zzcgj:Lcom/google/android/gms/internal/zzbps;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrd;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbps;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgj:Lcom/google/android/gms/internal/zzbps;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpr$zzc;)Lcom/google/android/gms/internal/zzbps;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgj:Lcom/google/android/gms/internal/zzbps;

    return-object v0
.end method


# virtual methods
.method public zzXw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaas()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzXx()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaas()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsz;->zzt(Lcom/google/android/gms/internal/zzbsc;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzXy()Lcom/google/android/gms/internal/zzboi;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaas()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrs;->zzi(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrs;->zzXp()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzboi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrs;->zzXq()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzboi;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/database/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/c;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgj:Lcom/google/android/gms/internal/zzbps;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgj:Lcom/google/android/gms/internal/zzbps;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbpr;->zzt(Lcom/google/android/gms/internal/zzbph;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbpr;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Listen at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcfV:Lcom/google/android/gms/internal/zzbpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpr$zzc;->zzcgi:Lcom/google/android/gms/internal/zzbrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrd;->zzaar()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/firebase/database/c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
