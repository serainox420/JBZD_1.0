.class public Lcom/google/android/gms/internal/zzgw;
.super Lcom/google/android/gms/internal/zzhl$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzha$zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzGA:Lcom/google/android/gms/internal/zzha;

.field private zzGB:Lcom/google/android/gms/internal/zzhf;

.field private zzGC:Ljava/lang/String;

.field private zzGp:Ljava/lang/String;

.field private zzGq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgu;",
            ">;"
        }
    .end annotation
.end field

.field private zzGr:Ljava/lang/String;

.field private zzGt:Ljava/lang/String;

.field private zzGx:Lcom/google/android/gms/internal/zzgs;

.field private zzGy:Lcom/google/android/gms/internal/zzfa;

.field private zzGz:Landroid/view/View;

.field private zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzfa;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhl$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw;->zzGp:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw;->zzGq:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw;->zzGr:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw;->zzGB:Lcom/google/android/gms/internal/zzhf;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgw;->zzGt:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgw;->zzGC:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgw;->zzGx:Lcom/google/android/gms/internal/zzgs;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzgw;->mExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzgw;->zzGy:Lcom/google/android/gms/internal/zzfa;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzgw;->zzGz:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGq:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGB:Lcom/google/android/gms/internal/zzhf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGC:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGx:Lcom/google/android/gms/internal/zzgs;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzrJ:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGA:Lcom/google/android/gms/internal/zzha;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGy:Lcom/google/android/gms/internal/zzfa;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGz:Landroid/view/View;

    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGC:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGr:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGt:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGp:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGq:Ljava/util/List;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzha;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw;->zzGA:Lcom/google/android/gms/internal/zzha;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbF()Lcom/google/android/gms/internal/zzfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGy:Lcom/google/android/gms/internal/zzfa;

    return-object v0
.end method

.method public zzfR()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGA:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public zzfS()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public zzfT()Lcom/google/android/gms/internal/zzgs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGx:Lcom/google/android/gms/internal/zzgs;

    return-object v0
.end method

.method public zzfU()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGz:Landroid/view/View;

    return-object v0
.end method

.method public zzfV()Lcom/google/android/gms/internal/zzhf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw;->zzGB:Lcom/google/android/gms/internal/zzhf;

    return-object v0
.end method
