.class public interface abstract Lpl/jbzd/api/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract comment_create(IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "parent_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/create"
    .end annotation
.end method

.method public abstract comment_create(IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "parent_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/create"
    .end annotation
.end method

.method public abstract comment_create(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/create"
    .end annotation
.end method

.method public abstract comment_create(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/create"
    .end annotation
.end method

.method public abstract comment_delete(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/delete"
    .end annotation
.end method

.method public abstract comment_listing(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/listing"
    .end annotation
.end method

.method public abstract comment_listing(IJLjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/listing"
    .end annotation
.end method

.method public abstract comment_listing(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/listing"
    .end annotation
.end method

.method public abstract comment_listing_date(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/listing"
    .end annotation
.end method

.method public abstract comment_listing_direction(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/listing"
    .end annotation
.end method

.method public abstract comment_report(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/report"
    .end annotation
.end method

.method public abstract comment_update(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "comment"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/update"
    .end annotation
.end method

.method public abstract comment_vote(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vote"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "comment/vote"
    .end annotation
.end method

.method public abstract media_check_newest(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaCheckNewestResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/check-newest"
    .end annotation
.end method

.method public abstract media_create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "title"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "image"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/create"
    .end annotation
.end method

.method public abstract media_create_file(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "token"
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "title"
        .end annotation
    .end param
    .param p3    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "type"
        .end annotation
    .end param
    .param p4    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/create"
    .end annotation
.end method

.method public abstract media_default_tags(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/TagsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/default-tags"
    .end annotation
.end method

.method public abstract media_favorites(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/favorites"
    .end annotation
.end method

.method public abstract media_index(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/BaseMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/index"
    .end annotation
.end method

.method public abstract media_listing(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing"
    .end annotation
.end method

.method public abstract media_listing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing"
    .end annotation
.end method

.method public abstract media_listing_alternative(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing-alternative"
    .end annotation
.end method

.method public abstract media_listing_alternative(Ljava/lang/String;II)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing-alternative"
    .end annotation
.end method

.method public abstract media_listing_alternative_user(Ljava/lang/String;II)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing-alternative"
    .end annotation
.end method

.method public abstract media_listing_alternative_user(Ljava/lang/String;III)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing-alternative"
    .end annotation
.end method

.method public abstract media_listing_user(Ljava/lang/String;ILjava/lang/String;J)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing"
    .end annotation
.end method

.method public abstract media_listing_user(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "direction"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/listing"
    .end annotation
.end method

.method public abstract media_random()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/random"
    .end annotation
.end method

.method public abstract media_report(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/report"
    .end annotation
.end method

.method public abstract media_toFavorites(Ljava/lang/String;IZ)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "result"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/FavoriteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/to-favorites"
    .end annotation
.end method

.method public abstract media_top(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "treshold"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/top"
    .end annotation
.end method

.method public abstract media_top(Ljava/lang/String;I[Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "treshold"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "types"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/top"
    .end annotation
.end method

.method public abstract media_vote(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vote"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/VoteResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "media/vote"
    .end annotation
.end method

.method public abstract token_create(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token_value"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/FcmTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "token/create"
    .end annotation
.end method

.method public abstract token_delete(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token_value"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "token/delete"
    .end annotation
.end method

.method public abstract token_listing(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "token/listing"
    .end annotation
.end method

.method public abstract user_auth(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/DefaultApiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/auth"
    .end annotation
.end method

.method public abstract user_auth_facebook(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/auth-facebook"
    .end annotation
.end method

.method public abstract user_observe(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/ObserveResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/observe"
    .end annotation
.end method

.method public abstract user_profile(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/profile"
    .end annotation
.end method

.method public abstract user_profile(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/profile"
    .end annotation
.end method

.method public abstract user_profile(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/profile"
    .end annotation
.end method

.method public abstract user_profile(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "date"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/profile"
    .end annotation
.end method

.method public abstract user_profile_with_token(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/profile"
    .end annotation
.end method

.method public abstract user_retrieve_password(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "email"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserRetrievePasswordResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/retrive-password"
    .end annotation
.end method

.method public abstract user_sign_in(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/auth"
    .end annotation
.end method

.method public abstract user_sign_in(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "login"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "password"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/sign-in"
    .end annotation
.end method

.method public abstract user_sign_up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "username"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "email"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "password"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "password_confirmation"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user/sign-up"
    .end annotation
.end method
