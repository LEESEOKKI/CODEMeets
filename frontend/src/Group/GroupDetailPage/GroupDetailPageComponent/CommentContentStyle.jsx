import styled from 'styled-components';

const CommentContentStyle = ({ Content }) => {
  return (
    <div>
      <ContentBox>{Content}</ContentBox>
    </div>
  );
};

export default CommentContentStyle;

const ContentBox = styled.div`
  margin: 2vh;
  margin-bottom: 1vh;
  height: 45vh;
  overflow-y: auto;
`;
