package pl.jbzd.api;

import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import pl.jbzd.api.response.BaseMediaResponse;
import pl.jbzd.api.response.CommentListResponse;
import pl.jbzd.api.response.CommentResponse;
import pl.jbzd.api.response.DefaultApiResponse;
import pl.jbzd.api.response.FavoriteResponse;
import pl.jbzd.api.response.FcmTokenResponse;
import pl.jbzd.api.response.MediaCheckNewestResponse;
import pl.jbzd.api.response.MediaListResponse;
import pl.jbzd.api.response.ObserveResponse;
import pl.jbzd.api.response.TagsResponse;
import pl.jbzd.api.response.UserMediaResponse;
import pl.jbzd.api.response.UserResponse;
import pl.jbzd.api.response.UserRetrievePasswordResponse;
import pl.jbzd.api.response.VoteResponse;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Query;
/* loaded from: classes.dex */
public interface ApiService {
    @POST("comment/create")
    Call<CommentListResponse> comment_create(@Query("id") int i, @Query("parent_id") int i2, @Query("comment") String str);

    @POST("comment/create")
    Call<CommentListResponse> comment_create(@Query("id") int i, @Query("parent_id") int i2, @Query("comment") String str, @Query("token") String str2);

    @POST("comment/create")
    Call<CommentListResponse> comment_create(@Query("id") int i, @Query("comment") String str);

    @POST("comment/create")
    Call<CommentListResponse> comment_create(@Query("id") int i, @Query("comment") String str, @Query("token") String str2);

    @POST("comment/delete")
    Call<DefaultApiResponse> comment_delete(@Query("id") int i, @Query("token") String str);

    @POST("comment/listing")
    Call<CommentListResponse> comment_listing(@Query("id") int i);

    @POST("comment/listing")
    Call<CommentListResponse> comment_listing(@Query("id") int i, @Query("date") long j, @Query("direction") String str);

    @POST("comment/listing")
    Call<CommentListResponse> comment_listing(@Query("id") int i, @Query("date") String str, @Query("direction") String str2);

    @POST("comment/listing")
    Call<CommentListResponse> comment_listing_date(@Query("id") int i, @Query("date") String str);

    @POST("comment/listing")
    Call<CommentListResponse> comment_listing_direction(@Query("id") int i, @Query("direction") String str);

    @POST("comment/report")
    Call<CommentResponse> comment_report(@Query("id") int i, @Query("token") String str);

    @POST("comment/update")
    Call<DefaultApiResponse> comment_update(@Query("id") int i, @Query("comment") String str, @Query("token") String str2);

    @POST("comment/vote")
    Call<CommentResponse> comment_vote(@Query("id") int i, @Query("vote") String str);

    @POST("media/check-newest")
    Call<MediaCheckNewestResponse> media_check_newest(@Query("date") String str);

    @FormUrlEncoded
    @POST("media/create")
    Call<DefaultApiResponse> media_create(@Query("token") String str, @Query("title") String str2, @Query("type") String str3, @Field("image") String str4);

    @POST("media/create")
    @Multipart
    Call<DefaultApiResponse> media_create_file(@Part("token") RequestBody requestBody, @Part("title") RequestBody requestBody2, @Part("type") RequestBody requestBody3, @Part MultipartBody.Part part);

    @POST("media/default-tags")
    Call<TagsResponse> media_default_tags(@Query("token") String str);

    @POST("media/favorites")
    Call<MediaListResponse> media_favorites(@Query("token") String str, @Query("direction") String str2, @Query("date") long j);

    @POST("media/index")
    Call<BaseMediaResponse> media_index(@Query("id") int i);

    @POST("media/listing")
    Call<MediaListResponse> media_listing(@Query("status") String str, @Query("direction") String str2, @Query("date") long j);

    @POST("media/listing")
    Call<MediaListResponse> media_listing(@Query("status") String str, @Query("direction") String str2, @Query("date") String str3);

    @POST("media/listing-alternative")
    Call<MediaListResponse> media_listing_alternative(@Query("status") String str, @Query("page") int i);

    @POST("media/listing-alternative")
    Call<MediaListResponse> media_listing_alternative(@Query("status") String str, @Query("page") int i, @Query("per_page") int i2);

    @POST("media/listing-alternative")
    Call<MediaListResponse> media_listing_alternative_user(@Query("status") String str, @Query("user_id") int i, @Query("page") int i2);

    @POST("media/listing-alternative")
    Call<MediaListResponse> media_listing_alternative_user(@Query("status") String str, @Query("user_id") int i, @Query("page") int i2, @Query("per_page") int i3);

    @POST("media/listing")
    Call<MediaListResponse> media_listing_user(@Query("status") String str, @Query("user_id") int i, @Query("direction") String str2, @Query("date") long j);

    @POST("media/listing")
    Call<MediaListResponse> media_listing_user(@Query("status") String str, @Query("user_id") int i, @Query("direction") String str2, @Query("date") String str3);

    @POST("media/random")
    Call<MediaListResponse> media_random();

    @POST("media/report")
    Call<DefaultApiResponse> media_report(@Query("id") int i);

    @POST("media/to-favorites")
    Call<FavoriteResponse> media_toFavorites(@Query("token") String str, @Query("id") int i, @Query("result") boolean z);

    @POST("media/top")
    Call<MediaListResponse> media_top(@Query("treshold") String str, @Query("per_page") int i);

    @POST("media/top")
    Call<MediaListResponse> media_top(@Query("treshold") String str, @Query("per_page") int i, @Query("types") String[] strArr);

    @POST("media/vote")
    Call<VoteResponse> media_vote(@Query("id") int i, @Query("vote") String str);

    @POST("token/create")
    Call<FcmTokenResponse> token_create(@Query("device") String str, @Query("token_value") String str2);

    @POST("token/delete")
    Call<DefaultApiResponse> token_delete(@Query("device") String str, @Query("token_value") String str2);

    @POST("token/listing")
    Call<DefaultApiResponse> token_listing(@Query("token") String str);

    @POST("user/auth")
    Call<DefaultApiResponse> user_auth(@Query("token") String str);

    @POST("user/auth-facebook")
    Call<UserResponse> user_auth_facebook(@Query("token") String str);

    @POST("user/observe")
    Call<ObserveResponse> user_observe(@Query("id") int i, @Query("token") String str);

    @POST("user/profile")
    Call<UserMediaResponse> user_profile(@Query("id") String str);

    @POST("user/profile")
    Call<UserMediaResponse> user_profile(@Query("id") String str, @Query("page") int i);

    @POST("user/profile")
    Call<UserMediaResponse> user_profile(@Query("id") String str, @Query("date") String str2);

    @POST("user/profile")
    Call<UserMediaResponse> user_profile(@Query("id") String str, @Query("date") String str2, @Query("page") int i);

    @POST("user/profile")
    Call<UserMediaResponse> user_profile_with_token(@Query("token") String str, @Query("id") String str2, @Query("page") int i);

    @POST("user/retrive-password")
    Call<UserRetrievePasswordResponse> user_retrieve_password(@Query("email") String str);

    @POST("user/auth")
    Call<UserResponse> user_sign_in(@Query("token") String str);

    @POST("user/sign-in")
    Call<UserResponse> user_sign_in(@Query("login") String str, @Query("password") String str2);

    @POST("user/sign-up")
    Call<UserResponse> user_sign_up(@Query("username") String str, @Query("email") String str2, @Query("password") String str3, @Query("password_confirmation") String str4);
}
